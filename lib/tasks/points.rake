namespace :points do

  task :calculate_points => :environment do
    for i in 1..25
     parents = Relationship.where(:child_id => i)
     parents.each do |p|
       score = Point.where(:user_id=>p.parent_id).first
       if score.present?
         score.increment(:points, 10)
       else
         score = Point.new(:user_id=> p.parent_id, :points=> 10)
       end
       score.save
       parents2 = Relationship.where(:child_id => p.parent_id)
       parents2.each do |p2|
         score = Point.where(:user_id=>p2.parent_id).first
         if score.present?
           score.increment(:points, 6)
         else
           score = Point.new(:user_id=> p2.parent_id, :points=> 6)
         end
         score.save
         parents3 = Relationship.where(:child_id => p2.parent_id)
         parents3.each do |p3|
           score = Point.where(:user_id=>p3.parent_id).first
           if score.present?
             score.increment(:points, 3)
           else
             score = Point.new(:user_id=> p3.parent_id, :points=> 3)
           end
           score.save
           parents4 = Relationship.where(:child_id => p3.parent_id)
           parents4.each do |p4|
             score = Point.where(:user_id=>p4.parent_id).first
             if score.present?
               score.increment(:points, 1)
             else
               score = Point.new(:user_id=> p3.parent_id, :points=> 1)
             end
             score.save
          end
        end
      end
     end
    end

  end

end

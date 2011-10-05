class NflGame < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name    :string, :required
    away    enum_string(:Arizona_Cardinals, :Atlanta_Falcons, :Baltimore_Ravens, :Buffalo_Bills, :Carolina_Panthers, :Chicago_Bears, :Cincinnati_Bengals, :Cleveland_Browns, :Dallas_Cowboys, :Denver_Broncos, :Detroit_Lions, :Green_Bay_Packers, :Houston_Texans, :Indianapolis_Colts, :Jacksonville_Jaguars, :Kansas_City_Chiefs, :Miami_Dolphins, :Minnesota_Vikings, :New_England_Patriots, :New_Orleans_Saints, :New_York_Giants, :New_York_Jets, :Oakland_Raiders, :Philadelphia_Eagles, :Pittsburgh_Steelers, :San_Diego_Chargers, :San_Francisco_49ers, :Seattle_Seahawks, :St_Louis_Rams, :Tampa_Bay_Buccaneers, :Tennessee_Titans, :Washington_Redskins), :required
    home    enum_string(:Arizona_Cardinals, :Atlanta_Falcons, :Baltimore_Ravens, :Buffalo_Bills, :Carolina_Panthers, :Chicago_Bears, :Cincinnati_Bengals, :Cleveland_Browns, :Dallas_Cowboys, :Denver_Broncos, :Detroit_Lions, :Green_Bay_Packers, :Houston_Texans, :Indianapolis_Colts, :Jacksonville_Jaguars, :Kansas_City_Chiefs, :Miami_Dolphins, :Minnesota_Vikings, :New_England_Patriots, :New_Orleans_Saints, :New_York_Giants, :New_York_Jets, :Oakland_Raiders, :Philadelphia_Eagles, :Pittsburgh_Steelers, :San_Diego_Chargers, :San_Francisco_49ers, :Seattle_Seahawks, :St_Louis_Rams, :Tampa_Bay_Buccaneers, :Tennessee_Titans, :Washington_Redskins), :required
    winner  enum_string(:___, :Arizona_Cardinals, :Atlanta_Falcons, :Baltimore_Ravens, :Buffalo_Bills, :Carolina_Panthers, :Chicago_Bears, :Cincinnati_Bengals, :Cleveland_Browns, :Dallas_Cowboys, :Denver_Broncos, :Detroit_Lions, :Green_Bay_Packers, :Houston_Texans, :Indianapolis_Colts, :Jacksonville_Jaguars, :Kansas_City_Chiefs, :Miami_Dolphins, :Minnesota_Vikings, :New_England_Patriots, :New_Orleans_Saints, :New_York_Giants, :New_York_Jets, :Oakland_Raiders, :Philadelphia_Eagles, :Pittsburgh_Steelers, :San_Diego_Chargers, :San_Francisco_49ers, :Seattle_Seahawks, :St_Louis_Rams, :Tampa_Bay_Buccaneers, :Tennessee_Titans, :Washington_Redskins)
    gameday :date, :required
    timestamps
  end
  

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end

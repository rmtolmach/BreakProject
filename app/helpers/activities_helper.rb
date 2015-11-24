module ActivitiesHelper
  def times_when(activity)
    times_when = []
    times_when.push("Monday Mornings")if activity.monday_morning
    times_when.push("Monday Afternoons") if activity.monday_afternoon
    times_when.push("Monday Evenings") if activity.monday_evening
    times_when.push("Tuesday Mornings") if activity.tuesday_morning
    times_when.push("Tuesday Afternoons") if activity.tuesday_afternoon
    times_when.push("Tuesday Evenings") if activity.tuesday_evening
    times_when.push("Wednesday Mornings") if activity.wednesday_morning
    times_when.push("Wednesday Afternoons") if activity.wednesday_afternoon
    times_when.push("Wednesday Evenings") if activity.wednesday_evening
    times_when.push("Thursday Mornings") if activity.thursday_morning
    times_when.push("Thursday Afternoons") if activity.thursday_afternoon
    times_when.push("Thursday Evenings") if activity.thursday_evening
    times_when.push("Friday Mornings") if activity.friday_morning
    times_when.push("Friday Afternoons") if activity.friday_afternoon
    times_when.push("Friday Evenings") if activity.friday_evening
    times_when.push("Saturday Mornings") if activity.saturday_morning
    times_when.push("Saturday Afternoons") if activity.saturday_afternoon
    times_when.push("Saturday Evenings") if activity.saturday_evening
    times_when.push("Sunday Mornings") if activity.sunday_morning
    times_when.push("Sunday Afternoons") if activity.sunday_afternoon
    times_when.push("Sunday Afternoons") if activity.sunday_evening
    times_when
  end

  def us_states
    [
      ['AK', 'AK'],
      ['AL', 'AL'],
      ['AR', 'AR'],
      ['AZ', 'AZ'],
      ['CA', 'CA'],
      ['CO', 'CO'],
      ['CT', 'CT'],
      ['DC', 'DC'],
      ['DE', 'DE'],
      ['FL', 'FL'],
      ['GA', 'GA'],
      ['HI', 'HI'],
      ['IA', 'IA'],
      ['ID', 'ID'],
      ['IL', 'IL'],
      ['IN', 'IN'],
      ['KS', 'KS'],
      ['KY', 'KY'],
      ['LA', 'LA'],
      ['MA', 'MA'],
      ['MD', 'MD'],
      ['ME', 'ME'],
      ['MI', 'MI'],
      ['MN', 'MN'],
      ['MO', 'MO'],
      ['MS', 'MS'],
      ['MT', 'MT'],
      ['NC', 'NC'],
      ['ND', 'ND'],
      ['NE', 'NE'],
      ['NH', 'NH'],
      ['NJ', 'NJ'],
      ['NM', 'NM'],
      ['NV', 'NV'],
      ['NY', 'NY'],
      ['OH', 'OH'],
      ['OK', 'OK'],
      ['OR', 'OR'],
      ['PA', 'PA'],
      ['RI', 'RI'],
      ['SC', 'SC'],
      ['SD', 'SD'],
      ['TN', 'TN'],
      ['TX', 'TX'],
      ['UT', 'UT'],
      ['VA', 'VA'],
      ['VT', 'VT'],
      ['WA', 'WA'],
      ['WI', 'WI'],
      ['WV', 'WV'],
      ['WY', 'WY']
    ]
  end
end

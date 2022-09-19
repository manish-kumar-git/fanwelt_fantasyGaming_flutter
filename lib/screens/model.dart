class model {
  String? status;
  Response? response;
  String? etag;
  String? modified;
  String? datetime;
  String? apiVersion;

  model(
      {this.status,
      this.response,
      this.etag,
      this.modified,
      this.datetime,
      this.apiVersion});

  model.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
    etag = json['etag'];
    modified = json['modified'];
    datetime = json['datetime'];
    apiVersion = json['api_version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    data['etag'] = this.etag;
    data['modified'] = this.modified;
    data['datetime'] = this.datetime;
    data['api_version'] = this.apiVersion;
    return data;
  }
}

class Response {
  List<Items>? items;
  int? totalItems;
  int? totalPages;

  Response({this.items, this.totalItems, this.totalPages});

  Response.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    totalItems = json['total_items'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['total_items'] = this.totalItems;
    data['total_pages'] = this.totalPages;
    return data;
  }
}

class Items {
  int? matchId;
  String? title;
  String? shortTitle;
  String? subtitle;
  int? format;
  String? formatStr;
  int? status;
  String? statusStr;
  String? statusNote;
  String? verified;
  String? preSquad;
  String? oddsAvailable;
  int? gameState;
  String? gameStateStr;
  String? domestic;
  Competition? competition;
  Teama? teama;
  Teama? teamb;
  String? dateStart;
  String? dateEnd;
  int? timestampStart;
  int? timestampEnd;
  String? dateStartIst;
  String? dateEndIst;
  Venue? venue;
  String? umpires;
  String? referee;
  String? equation;
  String? live;
  String? result;
  String? resultType;
  String? winMargin;
  int? winningTeamId;
  int? commentary;
  int? wagon;
  int? latestInningNumber;
  String? presquadTime;
  String? verifyTime;
  Toss? toss;

  Items(
      {this.matchId,
      this.title,
      this.shortTitle,
      this.subtitle,
      this.format,
      this.formatStr,
      this.status,
      this.statusStr,
      this.statusNote,
      this.verified,
      this.preSquad,
      this.oddsAvailable,
      this.gameState,
      this.gameStateStr,
      this.domestic,
      this.competition,
      this.teama,
      this.teamb,
      this.dateStart,
      this.dateEnd,
      this.timestampStart,
      this.timestampEnd,
      this.dateStartIst,
      this.dateEndIst,
      this.venue,
      this.umpires,
      this.referee,
      this.equation,
      this.live,
      this.result,
      this.resultType,
      this.winMargin,
      this.winningTeamId,
      this.commentary,
      this.wagon,
      this.latestInningNumber,
      this.presquadTime,
      this.verifyTime,
      this.toss});

  Items.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    title = json['title'];
    shortTitle = json['short_title'];
    subtitle = json['subtitle'];
    format = json['format'];
    formatStr = json['format_str'];
    status = json['status'];
    statusStr = json['status_str'];
    statusNote = json['status_note'];
    verified = json['verified'];
    preSquad = json['pre_squad'];
    oddsAvailable = json['odds_available'];
    gameState = json['game_state'];
    gameStateStr = json['game_state_str'];
    domestic = json['domestic'];
    competition = json['competition'] != null
        ? new Competition.fromJson(json['competition'])
        : null;
    teama = json['teama'] != null ? new Teama.fromJson(json['teama']) : null;
    teamb = json['teamb'] != null ? new Teama.fromJson(json['teamb']) : null;
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    timestampStart = json['timestamp_start'];
    timestampEnd = json['timestamp_end'];
    dateStartIst = json['date_start_ist'];
    dateEndIst = json['date_end_ist'];
    venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
    umpires = json['umpires'];
    referee = json['referee'];
    equation = json['equation'];
    live = json['live'];
    result = json['result'];
    resultType = json['result_type'];
    winMargin = json['win_margin'];
    winningTeamId = json['winning_team_id'];
    commentary = json['commentary'];
    wagon = json['wagon'];
    latestInningNumber = json['latest_inning_number'];
    presquadTime = json['presquad_time'];
    verifyTime = json['verify_time'];
    toss = json['toss'] != null ? new Toss.fromJson(json['toss']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['match_id'] = this.matchId;
    data['title'] = this.title;
    data['short_title'] = this.shortTitle;
    data['subtitle'] = this.subtitle;
    data['format'] = this.format;
    data['format_str'] = this.formatStr;
    data['status'] = this.status;
    data['status_str'] = this.statusStr;
    data['status_note'] = this.statusNote;
    data['verified'] = this.verified;
    data['pre_squad'] = this.preSquad;
    data['odds_available'] = this.oddsAvailable;
    data['game_state'] = this.gameState;
    data['game_state_str'] = this.gameStateStr;
    data['domestic'] = this.domestic;
    if (this.competition != null) {
      data['competition'] = this.competition!.toJson();
    }
    if (this.teama != null) {
      data['teama'] = this.teama!.toJson();
    }
    if (this.teamb != null) {
      data['teamb'] = this.teamb!.toJson();
    }
    data['date_start'] = this.dateStart;
    data['date_end'] = this.dateEnd;
    data['timestamp_start'] = this.timestampStart;
    data['timestamp_end'] = this.timestampEnd;
    data['date_start_ist'] = this.dateStartIst;
    data['date_end_ist'] = this.dateEndIst;
    if (this.venue != null) {
      data['venue'] = this.venue!.toJson();
    }
    data['umpires'] = this.umpires;
    data['referee'] = this.referee;
    data['equation'] = this.equation;
    data['live'] = this.live;
    data['result'] = this.result;
    data['result_type'] = this.resultType;
    data['win_margin'] = this.winMargin;
    data['winning_team_id'] = this.winningTeamId;
    data['commentary'] = this.commentary;
    data['wagon'] = this.wagon;
    data['latest_inning_number'] = this.latestInningNumber;
    data['presquad_time'] = this.presquadTime;
    data['verify_time'] = this.verifyTime;
    if (this.toss != null) {
      data['toss'] = this.toss!.toJson();
    }
    return data;
  }
}

class Competition {
  int? cid;
  String? title;
  String? abbr;
  String? type;
  String? category;
  String? matchFormat;
  String? status;
  String? season;
  String? datestart;
  String? dateend;
  String? country;
  String? totalMatches;
  String? totalRounds;
  String? totalTeams;

  Competition(
      {this.cid,
      this.title,
      this.abbr,
      this.type,
      this.category,
      this.matchFormat,
      this.status,
      this.season,
      this.datestart,
      this.dateend,
      this.country,
      this.totalMatches,
      this.totalRounds,
      this.totalTeams});

  Competition.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    title = json['title'];
    abbr = json['abbr'];
    type = json['type'];
    category = json['category'];
    matchFormat = json['match_format'];
    status = json['status'];
    season = json['season'];
    datestart = json['datestart'];
    dateend = json['dateend'];
    country = json['country'];
    totalMatches = json['total_matches'];
    totalRounds = json['total_rounds'];
    totalTeams = json['total_teams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cid'] = this.cid;
    data['title'] = this.title;
    data['abbr'] = this.abbr;
    data['type'] = this.type;
    data['category'] = this.category;
    data['match_format'] = this.matchFormat;
    data['status'] = this.status;
    data['season'] = this.season;
    data['datestart'] = this.datestart;
    data['dateend'] = this.dateend;
    data['country'] = this.country;
    data['total_matches'] = this.totalMatches;
    data['total_rounds'] = this.totalRounds;
    data['total_teams'] = this.totalTeams;
    return data;
  }
}

class Teama {
  int? teamId;
  String? name;
  String? shortName;
  String? logoUrl;

  Teama({this.teamId, this.name, this.shortName, this.logoUrl});

  Teama.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    logoUrl = json['logo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = this.teamId;
    data['name'] = this.name;
    data['short_name'] = this.shortName;
    data['logo_url'] = this.logoUrl;
    return data;
  }
}

class Venue {
  String? venueId;
  String? name;
  String? location;
  String? timezone;

  Venue({this.venueId, this.name, this.location, this.timezone});

  Venue.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    name = json['name'];
    location = json['location'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['venue_id'] = this.venueId;
    data['name'] = this.name;
    data['location'] = this.location;
    data['timezone'] = this.timezone;
    return data;
  }
}

class Toss {
  int? winner;
  int? decision;

  Toss({this.winner, this.decision});

  Toss.fromJson(Map<String, dynamic> json) {
    winner = json['winner'];
    decision = json['decision'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['winner'] = this.winner;
    data['decision'] = this.decision;
    return data;
  }
}
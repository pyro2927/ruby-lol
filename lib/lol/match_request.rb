module Lol
  class MatchRequest < Request
    # Returns the supported API Version
    # @return [String] the supported api version
    def self.api_version
      "v2.2"
    end

    # Returns a match with the given id
    # @param match_id [Fixnum] Match ID
    # @return [Hash] match object
    def get match_id
      perform_request(api_url("match/#{match_id}"))
    end

    # Returns a match with the given id
    # @param tournament_code [String] Tournament Code of the Match
    # @param match_id [Fixnum] Match ID
    # @return [Hash] match object
    def get_tournament tournament_code, match_id
      perform_request(api_url("match/for-tournament/#{match_id}", { tournamentCode: tournament_code }))
    end
  end
end

//  This file was automatically generated and should not be edited.

import Apollo

public final class ConferenceDetailsQuery: GraphQLQuery {
  public let operationDefinition =
    "query ConferenceDetails($id: ID!) {\n  conference: Conference(id: $id) {\n    __typename\n    ...ConferenceDetails\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(ConferenceDetails.fragmentDefinition) }

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Conference", alias: "conference", arguments: ["id": GraphQLVariable("id")], type: .object(Conference.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(conference: Conference? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "conference": conference.flatMap { (value: Conference) -> ResultMap in value.resultMap }])
    }

    public var conference: Conference? {
      get {
        return (resultMap["conference"] as? ResultMap).flatMap { Conference(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "conference")
      }
    }

    public struct Conference: GraphQLSelectionSet {
      public static let possibleTypes = ["Conference"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ConferenceDetails.self),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var conferenceDetails: ConferenceDetails {
          get {
            return ConferenceDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class AttendeesForConferenceQuery: GraphQLQuery {
  public let operationDefinition =
    "query AttendeesForConference($conferenceId: ID!) {\n  conference: Conference(id: $conferenceId) {\n    __typename\n    id\n    attendees {\n      __typename\n      ...AttendeeDetails\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(AttendeeDetails.fragmentDefinition) }

  public var conferenceId: GraphQLID

  public init(conferenceId: GraphQLID) {
    self.conferenceId = conferenceId
  }

  public var variables: GraphQLMap? {
    return ["conferenceId": conferenceId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("Conference", alias: "conference", arguments: ["id": GraphQLVariable("conferenceId")], type: .object(Conference.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(conference: Conference? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "conference": conference.flatMap { (value: Conference) -> ResultMap in value.resultMap }])
    }

    public var conference: Conference? {
      get {
        return (resultMap["conference"] as? ResultMap).flatMap { Conference(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "conference")
      }
    }

    public struct Conference: GraphQLSelectionSet {
      public static let possibleTypes = ["Conference"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, attendees: [Attendee]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Conference", "id": id, "attendees": attendees.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var attendees: [Attendee]? {
        get {
          return (resultMap["attendees"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Attendee] in value.map { (value: ResultMap) -> Attendee in Attendee(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }, forKey: "attendees")
        }
      }

      public struct Attendee: GraphQLSelectionSet {
        public static let possibleTypes = ["Attendee"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AttendeeDetails.self),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var attendeeDetails: AttendeeDetails {
            get {
              return AttendeeDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class AttendConferenceMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AttendConference($conferenceId: ID!, $attendeeId: ID!) {\n  addToAttendees(conferencesConferenceId: $conferenceId, attendeesAttendeeId: $attendeeId) {\n    __typename\n    conferencesConference {\n      __typename\n      id\n      attendees {\n        __typename\n        ...AttendeeDetails\n      }\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(AttendeeDetails.fragmentDefinition) }

  public var conferenceId: GraphQLID
  public var attendeeId: GraphQLID

  public init(conferenceId: GraphQLID, attendeeId: GraphQLID) {
    self.conferenceId = conferenceId
    self.attendeeId = attendeeId
  }

  public var variables: GraphQLMap? {
    return ["conferenceId": conferenceId, "attendeeId": attendeeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addToAttendees", arguments: ["conferencesConferenceId": GraphQLVariable("conferenceId"), "attendeesAttendeeId": GraphQLVariable("attendeeId")], type: .object(AddToAttendee.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addToAttendees: AddToAttendee? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addToAttendees": addToAttendees.flatMap { (value: AddToAttendee) -> ResultMap in value.resultMap }])
    }

    public var addToAttendees: AddToAttendee? {
      get {
        return (resultMap["addToAttendees"] as? ResultMap).flatMap { AddToAttendee(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addToAttendees")
      }
    }

    public struct AddToAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["AddToAttendeesPayload"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conferencesConference", type: .object(ConferencesConference.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(conferencesConference: ConferencesConference? = nil) {
        self.init(unsafeResultMap: ["__typename": "AddToAttendeesPayload", "conferencesConference": conferencesConference.flatMap { (value: ConferencesConference) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conferencesConference: ConferencesConference? {
        get {
          return (resultMap["conferencesConference"] as? ResultMap).flatMap { ConferencesConference(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "conferencesConference")
        }
      }

      public struct ConferencesConference: GraphQLSelectionSet {
        public static let possibleTypes = ["Conference"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, attendees: [Attendee]? = nil) {
          self.init(unsafeResultMap: ["__typename": "Conference", "id": id, "attendees": attendees.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var attendees: [Attendee]? {
          get {
            return (resultMap["attendees"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Attendee] in value.map { (value: ResultMap) -> Attendee in Attendee(unsafeResultMap: value) } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }, forKey: "attendees")
          }
        }

        public struct Attendee: GraphQLSelectionSet {
          public static let possibleTypes = ["Attendee"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AttendeeDetails.self),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var attendeeDetails: AttendeeDetails {
              get {
                return AttendeeDetails(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }
      }
    }
  }
}

public final class NotAttendConferenceMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation NotAttendConference($conferenceId: ID!, $attendeeId: ID!) {\n  removeFromAttendees(conferencesConferenceId: $conferenceId, attendeesAttendeeId: $attendeeId) {\n    __typename\n    conferencesConference {\n      __typename\n      id\n      attendees {\n        __typename\n        ...AttendeeDetails\n      }\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(AttendeeDetails.fragmentDefinition) }

  public var conferenceId: GraphQLID
  public var attendeeId: GraphQLID

  public init(conferenceId: GraphQLID, attendeeId: GraphQLID) {
    self.conferenceId = conferenceId
    self.attendeeId = attendeeId
  }

  public var variables: GraphQLMap? {
    return ["conferenceId": conferenceId, "attendeeId": attendeeId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("removeFromAttendees", arguments: ["conferencesConferenceId": GraphQLVariable("conferenceId"), "attendeesAttendeeId": GraphQLVariable("attendeeId")], type: .object(RemoveFromAttendee.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(removeFromAttendees: RemoveFromAttendee? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "removeFromAttendees": removeFromAttendees.flatMap { (value: RemoveFromAttendee) -> ResultMap in value.resultMap }])
    }

    public var removeFromAttendees: RemoveFromAttendee? {
      get {
        return (resultMap["removeFromAttendees"] as? ResultMap).flatMap { RemoveFromAttendee(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "removeFromAttendees")
      }
    }

    public struct RemoveFromAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["RemoveFromAttendeesPayload"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conferencesConference", type: .object(ConferencesConference.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(conferencesConference: ConferencesConference? = nil) {
        self.init(unsafeResultMap: ["__typename": "RemoveFromAttendeesPayload", "conferencesConference": conferencesConference.flatMap { (value: ConferencesConference) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conferencesConference: ConferencesConference? {
        get {
          return (resultMap["conferencesConference"] as? ResultMap).flatMap { ConferencesConference(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "conferencesConference")
        }
      }

      public struct ConferencesConference: GraphQLSelectionSet {
        public static let possibleTypes = ["Conference"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, attendees: [Attendee]? = nil) {
          self.init(unsafeResultMap: ["__typename": "Conference", "id": id, "attendees": attendees.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var attendees: [Attendee]? {
          get {
            return (resultMap["attendees"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Attendee] in value.map { (value: ResultMap) -> Attendee in Attendee(unsafeResultMap: value) } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }, forKey: "attendees")
          }
        }

        public struct Attendee: GraphQLSelectionSet {
          public static let possibleTypes = ["Attendee"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AttendeeDetails.self),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var attendeeDetails: AttendeeDetails {
              get {
                return AttendeeDetails(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateAttendeeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation CreateAttendee($name: String!) {\n  createAttendee(name: $name) {\n    __typename\n    id\n    name\n  }\n}"

  public var name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAttendee", arguments: ["name": GraphQLVariable("name")], type: .object(CreateAttendee.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createAttendee: CreateAttendee? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createAttendee": createAttendee.flatMap { (value: CreateAttendee) -> ResultMap in value.resultMap }])
    }

    public var createAttendee: CreateAttendee? {
      get {
        return (resultMap["createAttendee"] as? ResultMap).flatMap { CreateAttendee(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createAttendee")
      }
    }

    public struct CreateAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["Attendee"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String) {
        self.init(unsafeResultMap: ["__typename": "Attendee", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class UpdateAttendeeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateAttendee($attendeeId: ID!, $name: String!) {\n  updateAttendee(id: $attendeeId, name: $name) {\n    __typename\n    id\n    name\n  }\n}"

  public var attendeeId: GraphQLID
  public var name: String

  public init(attendeeId: GraphQLID, name: String) {
    self.attendeeId = attendeeId
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["attendeeId": attendeeId, "name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAttendee", arguments: ["id": GraphQLVariable("attendeeId"), "name": GraphQLVariable("name")], type: .object(UpdateAttendee.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateAttendee: UpdateAttendee? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateAttendee": updateAttendee.flatMap { (value: UpdateAttendee) -> ResultMap in value.resultMap }])
    }

    public var updateAttendee: UpdateAttendee? {
      get {
        return (resultMap["updateAttendee"] as? ResultMap).flatMap { UpdateAttendee(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateAttendee")
      }
    }

    public struct UpdateAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["Attendee"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String) {
        self.init(unsafeResultMap: ["__typename": "Attendee", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class AllConferencesQuery: GraphQLQuery {
  public let operationDefinition =
    "query AllConferences {\n  allConferences {\n    __typename\n    ...ConferenceDetails\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(ConferenceDetails.fragmentDefinition) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allConferences", type: .nonNull(.list(.nonNull(.object(AllConference.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allConferences: [AllConference]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allConferences": allConferences.map { (value: AllConference) -> ResultMap in value.resultMap }])
    }

    public var allConferences: [AllConference] {
      get {
        return (resultMap["allConferences"] as! [ResultMap]).map { (value: ResultMap) -> AllConference in AllConference(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllConference) -> ResultMap in value.resultMap }, forKey: "allConferences")
      }
    }

    public struct AllConference: GraphQLSelectionSet {
      public static let possibleTypes = ["Conference"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ConferenceDetails.self),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var conferenceDetails: ConferenceDetails {
          get {
            return ConferenceDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct AttendeeDetails: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment AttendeeDetails on Attendee {\n  __typename\n  id\n  name\n  _conferencesMeta {\n    __typename\n    count\n  }\n}"

  public static let possibleTypes = ["Attendee"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("_conferencesMeta", type: .nonNull(.object(ConferencesMetum.selections))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, name: String, conferencesMeta: ConferencesMetum) {
    self.init(unsafeResultMap: ["__typename": "Attendee", "id": id, "name": name, "_conferencesMeta": conferencesMeta.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return resultMap["name"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  /// Meta information about the query.
  public var conferencesMeta: ConferencesMetum {
    get {
      return ConferencesMetum(unsafeResultMap: resultMap["_conferencesMeta"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "_conferencesMeta")
    }
  }

  public struct ConferencesMetum: GraphQLSelectionSet {
    public static let possibleTypes = ["_QueryMeta"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("count", type: .nonNull(.scalar(Int.self))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(count: Int) {
      self.init(unsafeResultMap: ["__typename": "_QueryMeta", "count": count])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var count: Int {
      get {
        return resultMap["count"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "count")
      }
    }
  }
}

public struct ConferenceDetails: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment ConferenceDetails on Conference {\n  __typename\n  id\n  name\n  city\n  year\n  attendees {\n    __typename\n    id\n  }\n}"

  public static let possibleTypes = ["Conference"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("city", type: .nonNull(.scalar(String.self))),
    GraphQLField("year", type: .nonNull(.scalar(String.self))),
    GraphQLField("attendees", type: .list(.nonNull(.object(Attendee.selections)))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, name: String, city: String, year: String, attendees: [Attendee]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Conference", "id": id, "name": name, "city": city, "year": year, "attendees": attendees.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return resultMap["name"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  public var city: String {
    get {
      return resultMap["city"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "city")
    }
  }

  public var year: String {
    get {
      return resultMap["year"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "year")
    }
  }

  public var attendees: [Attendee]? {
    get {
      return (resultMap["attendees"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Attendee] in value.map { (value: ResultMap) -> Attendee in Attendee(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Attendee]) -> [ResultMap] in value.map { (value: Attendee) -> ResultMap in value.resultMap } }, forKey: "attendees")
    }
  }

  public struct Attendee: GraphQLSelectionSet {
    public static let possibleTypes = ["Attendee"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: GraphQLID) {
      self.init(unsafeResultMap: ["__typename": "Attendee", "id": id])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: GraphQLID {
      get {
        return resultMap["id"]! as! GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }
  }
}
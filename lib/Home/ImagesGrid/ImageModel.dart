// To parse this JSON data, do
//
//     final imageModel = imageModelFromJson(jsonString);



class ImageModel {
    String id;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime promotedAt;
    int width;
    int height;
    String color;
    String description;
    String altDescription;
    Urls urls;
    ImageModelLinks links;
    List<dynamic> categories;
    int likes;
    bool likedByUser;
    List<dynamic> currentUserCollections;
    User user;
    Exif exif;
    Location location;
    int views;
    int downloads;

    ImageModel({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.promotedAt,
        this.width,
        this.height,
        this.color,
        this.description,
        this.altDescription,
        this.urls,
        this.links,
        this.categories,
        this.likes,
        this.likedByUser,
        this.currentUserCollections,
        this.user,
        this.exif,
        this.location,
        this.views,
        this.downloads,
    });

    factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"] == null ? null : json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"] == null ? null : DateTime.parse(json["promoted_at"]),
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        color: json["color"] == null ? null : json["color"],
        description: json["description"] == null ? null : json["description"],
        altDescription: json["alt_description"] == null ? null : json["alt_description"],
        urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
        links: json["links"] == null ? null : ImageModelLinks.fromJson(json["links"]),
        categories: json["categories"] == null ? null : List<dynamic>.from(json["categories"].map((x) => x)),
        likes: json["likes"] == null ? null : json["likes"],
        likedByUser: json["liked_by_user"] == null ? null : json["liked_by_user"],
        currentUserCollections: json["current_user_collections"] == null ? null : List<dynamic>.from(json["current_user_collections"].map((x) => x)),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        exif: json["exif"] == null ? null : Exif.fromJson(json["exif"]),
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        views: json["views"] == null ? null : json["views"],
        downloads: json["downloads"] == null ? null : json["downloads"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "promoted_at": promotedAt == null ? null : promotedAt.toIso8601String(),
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "color": color == null ? null : color,
        "description": description == null ? null : description,
        "alt_description": altDescription == null ? null : altDescription,
        "urls": urls == null ? null : urls.toJson(),
        "links": links == null ? null : links.toJson(),
        "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x)),
        "likes": likes == null ? null : likes,
        "liked_by_user": likedByUser == null ? null : likedByUser,
        "current_user_collections": currentUserCollections == null ? null : List<dynamic>.from(currentUserCollections.map((x) => x)),
        "user": user == null ? null : user.toJson(),
        "exif": exif == null ? null : exif.toJson(),
        "location": location == null ? null : location.toJson(),
        "views": views == null ? null : views,
        "downloads": downloads == null ? null : downloads,
    };
}

class Exif {
    String make;
    String model;
    String exposureTime;
    String aperture;
    String focalLength;
    int iso;

    Exif({
        this.make,
        this.model,
        this.exposureTime,
        this.aperture,
        this.focalLength,
        this.iso,
    });

    factory Exif.fromJson(Map<String, dynamic> json) => Exif(
        make: json["make"] == null ? null : json["make"],
        model: json["model"] == null ? null : json["model"],
        exposureTime: json["exposure_time"] == null ? null : json["exposure_time"],
        aperture: json["aperture"] == null ? null : json["aperture"],
        focalLength: json["focal_length"] == null ? null : json["focal_length"],
        iso: json["iso"] == null ? null : json["iso"],
    );

    Map<String, dynamic> toJson() => {
        "make": make == null ? null : make,
        "model": model == null ? null : model,
        "exposure_time": exposureTime == null ? null : exposureTime,
        "aperture": aperture == null ? null : aperture,
        "focal_length": focalLength == null ? null : focalLength,
        "iso": iso == null ? null : iso,
    };
}

class ImageModelLinks {
    String self;
    String html;
    String download;
    String downloadLocation;

    ImageModelLinks({
        this.self,
        this.html,
        this.download,
        this.downloadLocation,
    });

    factory ImageModelLinks.fromJson(Map<String, dynamic> json) => ImageModelLinks(
        self: json["self"] == null ? null : json["self"],
        html: json["html"] == null ? null : json["html"],
        download: json["download"] == null ? null : json["download"],
        downloadLocation: json["download_location"] == null ? null : json["download_location"],
    );

    Map<String, dynamic> toJson() => {
        "self": self == null ? null : self,
        "html": html == null ? null : html,
        "download": download == null ? null : download,
        "download_location": downloadLocation == null ? null : downloadLocation,
    };
}

class Location {
    String title;
    String name;
    String city;
    String country;
    Position position;

    Location({
        this.title,
        this.name,
        this.city,
        this.country,
        this.position,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        title: json["title"] == null ? null : json["title"],
        name: json["name"] == null ? null : json["name"],
        city: json["city"] == null ? null : json["city"],
        country: json["country"] == null ? null : json["country"],
        position: json["position"] == null ? null : Position.fromJson(json["position"]),
    );

    Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "name": name == null ? null : name,
        "city": city == null ? null : city,
        "country": country == null ? null : country,
        "position": position == null ? null : position.toJson(),
    };
}

class Position {
    double latitude;
    double longitude;

    Position({
        this.latitude,
        this.longitude,
    });

    factory Position.fromJson(Map<String, dynamic> json) => Position(
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude: json["longitude"] == null ? null : json["longitude"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
    };
}

class Urls {
    String raw;
    String full;
    String regular;
    String small;
    String thumb;

    Urls({
        this.raw,
        this.full,
        this.regular,
        this.small,
        this.thumb,
    });

    factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"] == null ? null : json["raw"],
        full: json["full"] == null ? null : json["full"],
        regular: json["regular"] == null ? null : json["regular"],
        small: json["small"] == null ? null : json["small"],
        thumb: json["thumb"] == null ? null : json["thumb"],
    );

    Map<String, dynamic> toJson() => {
        "raw": raw == null ? null : raw,
        "full": full == null ? null : full,
        "regular": regular == null ? null : regular,
        "small": small == null ? null : small,
        "thumb": thumb == null ? null : thumb,
    };
}

class User {
    String id;
    DateTime updatedAt;
    String username;
    String name;
    String firstName;
    String lastName;
    String twitterUsername;
    String portfolioUrl;
    String bio;
    String location;
    UserLinks links;
    ProfileImage profileImage;
    String instagramUsername;
    int totalCollections;
    int totalLikes;
    int totalPhotos;
    bool acceptedTos;

    User({
        this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.acceptedTos,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        username: json["username"] == null ? null : json["username"],
        name: json["name"] == null ? null : json["name"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        twitterUsername: json["twitter_username"] == null ? null : json["twitter_username"],
        portfolioUrl: json["portfolio_url"] == null ? null : json["portfolio_url"],
        bio: json["bio"] == null ? null : json["bio"],
        location: json["location"] == null ? null : json["location"],
        links: json["links"] == null ? null : UserLinks.fromJson(json["links"]),
        profileImage: json["profile_image"] == null ? null : ProfileImage.fromJson(json["profile_image"]),
        instagramUsername: json["instagram_username"] == null ? null : json["instagram_username"],
        totalCollections: json["total_collections"] == null ? null : json["total_collections"],
        totalLikes: json["total_likes"] == null ? null : json["total_likes"],
        totalPhotos: json["total_photos"] == null ? null : json["total_photos"],
        acceptedTos: json["accepted_tos"] == null ? null : json["accepted_tos"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "username": username == null ? null : username,
        "name": name == null ? null : name,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "twitter_username": twitterUsername == null ? null : twitterUsername,
        "portfolio_url": portfolioUrl == null ? null : portfolioUrl,
        "bio": bio == null ? null : bio,
        "location": location == null ? null : location,
        "links": links == null ? null : links.toJson(),
        "profile_image": profileImage == null ? null : profileImage.toJson(),
        "instagram_username": instagramUsername == null ? null : instagramUsername,
        "total_collections": totalCollections == null ? null : totalCollections,
        "total_likes": totalLikes == null ? null : totalLikes,
        "total_photos": totalPhotos == null ? null : totalPhotos,
        "accepted_tos": acceptedTos == null ? null : acceptedTos,
    };
}

class UserLinks {
    String self;
    String html;
    String photos;
    String likes;
    String portfolio;
    String following;
    String followers;

    UserLinks({
        this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers,
    });

    factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
        self: json["self"] == null ? null : json["self"],
        html: json["html"] == null ? null : json["html"],
        photos: json["photos"] == null ? null : json["photos"],
        likes: json["likes"] == null ? null : json["likes"],
        portfolio: json["portfolio"] == null ? null : json["portfolio"],
        following: json["following"] == null ? null : json["following"],
        followers: json["followers"] == null ? null : json["followers"],
    );

    Map<String, dynamic> toJson() => {
        "self": self == null ? null : self,
        "html": html == null ? null : html,
        "photos": photos == null ? null : photos,
        "likes": likes == null ? null : likes,
        "portfolio": portfolio == null ? null : portfolio,
        "following": following == null ? null : following,
        "followers": followers == null ? null : followers,
    };
}

class ProfileImage {
    String small;
    String medium;
    String large;

    ProfileImage({
        this.small,
        this.medium,
        this.large,
    });

    factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json["small"] == null ? null : json["small"],
        medium: json["medium"] == null ? null : json["medium"],
        large: json["large"] == null ? null : json["large"],
    );

    Map<String, dynamic> toJson() => {
        "small": small == null ? null : small,
        "medium": medium == null ? null : medium,
        "large": large == null ? null : large,
    };
}

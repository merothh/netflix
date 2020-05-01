.class public abstract Lcom/netflix/msl/userauth/UserAuthenticationFactory;
.super Ljava/lang/Object;
.source "UserAuthenticationFactory.java"


# instance fields
.field private final scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/tokens/MslUser;
.end method

.method public abstract createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;
.end method

.method public getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->scheme:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-object v0
.end method

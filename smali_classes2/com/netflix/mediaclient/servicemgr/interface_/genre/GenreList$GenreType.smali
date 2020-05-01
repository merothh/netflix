.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const/4 v1, 0x0

    const-string v2, "GALLERY"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const/4 v2, 0x1

    const-string v3, "LOLOMO"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    .line 20
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->d:[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
    .locals 1

    .line 20
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
    .locals 1

    .line 20
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->d:[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    return-object v0
.end method

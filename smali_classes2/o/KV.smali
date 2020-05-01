.class public final Lo/KV;
.super Lo/MessagePdu;
.source ""


# static fields
.field private static a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

.field private static b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

.field public static final c:Lo/KV;

.field private static d:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lo/KV;

    invoke-direct {v0}, Lo/KV;-><init>()V

    sput-object v0, Lo/KV;->c:Lo/KV;

    .line 23
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const-string v3, ""

    const-string v4, "lolomo"

    invoke-direct {v1, v3, v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    sput-object v1, Lo/KV;->d:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    .line 24
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    invoke-direct {v0}, Lo/KV;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    sput-object v1, Lo/KV;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    .line 25
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    invoke-direct {v0}, Lo/KV;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-direct {v1, v3, v0, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    sput-object v1, Lo/KV;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "GenregeddonHelper"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "genreId"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    .line 54
    invoke-static {p0, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "genreId"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lo/KV;->c:Lo/KV;

    invoke-direct {v0}, Lo/KV;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "genreId"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lo/KV;->c:Lo/KV;

    invoke-direct {v0}, Lo/KV;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final d()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "genre-2496491"

    goto :goto_0

    :cond_0
    const-string v0, "genre-83"

    :goto_0
    return-object v0
.end method

.method private final e()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "genre-2495600"

    goto :goto_0

    :cond_0
    const-string v0, "genre-34399"

    :goto_0
    return-object v0
.end method

.method public static final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "genreId"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lolomo"

    .line 45
    invoke-static {p0, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
    .locals 1

    .line 23
    sget-object v0, Lo/KV;->d:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
    .locals 1

    .line 25
    sget-object v0, Lo/KV;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
    .locals 1

    .line 24
    sget-object v0, Lo/KV;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->la:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026mo_genre_name_all_genres)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    invoke-direct {p0}, Lo/KV;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    sput-object v1, Lo/KV;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    .line 36
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    invoke-direct {p0}, Lo/KV;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    sput-object v1, Lo/KV;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kW:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.lolomo_filter_name_all)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const-string v2, "lolomo"

    invoke-direct {v0, p1, v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    sput-object v0, Lo/KV;->d:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
    .locals 1

    const-string v0, "genreId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lo/KV;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/KV;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/KV;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    :goto_0
    return-object p1
.end method

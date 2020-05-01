.class public final enum Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/ISubtitleDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubtitleProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field private static final synthetic g:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;


# instance fields
.field private final f:I

.field private final h:Ljava/lang/String;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v6, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "simplesdh"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->a:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v8, "ENHANCED"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "dfxp-ls-sdh"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->e:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v2, "IMAGE"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "nflx-cmisc"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->b:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v8, "SIMPLE_ENC"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "simplesdh-enc"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->c:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v2, "ENHANCED_ENC"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-string v5, "dfxp-ls-sdh-enc"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v8, "IMAGE_ENC"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-string v11, "nflx-cmisc-enc"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->i:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 15
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->a:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->e:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->b:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->c:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->i:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->g:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->f:I

    .line 26
    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->h:Ljava/lang/String;

    .line 27
    iput-boolean p5, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->j:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 5

    .line 64
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->a:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 69
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->a:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .line 15
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .line 15
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->g:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->f:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->h:Ljava/lang/String;

    return-object v0
.end method

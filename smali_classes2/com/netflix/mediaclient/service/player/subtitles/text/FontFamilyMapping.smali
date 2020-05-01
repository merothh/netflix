.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum f:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum g:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum h:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum j:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum k:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum l:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum m:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum n:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum o:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum q:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field private static final synthetic r:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;


# instance fields
.field private s:Ljava/lang/String;

.field private t:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const-string v3, "defaultType"

    const-string v4, "default"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->d:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    const-string v4, "monospaceSansSerif"

    invoke-direct {v0, v4, v3, v1, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->b:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x2

    const-string v5, "monospaceSansSerifApi"

    const-string v6, "monospaced_sans_serif"

    invoke-direct {v0, v5, v4, v1, v6}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->a:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v5, 0x3

    const-string v6, "monospaceSerif"

    invoke-direct {v0, v6, v5, v1, v6}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->c:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v6, 0x4

    const-string v7, "monospaceSerifApi"

    const-string v8, "monospaced_serif"

    invoke-direct {v0, v7, v6, v1, v8}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->e:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v7, 0x5

    const-string v8, "proportionalSansSerif"

    invoke-direct {v0, v8, v7, v1, v8}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->h:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v8, 0x6

    const-string v9, "proportionalSansSerifApi"

    const-string v10, "proportional_sans_serif"

    invoke-direct {v0, v9, v8, v1, v10}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->g:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x7

    const-string v10, "proportionalSerif"

    invoke-direct {v0, v10, v9, v1, v10}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->f:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/16 v10, 0x8

    const-string v11, "proportionalSerifApi"

    const-string v12, "proportional_serif"

    invoke-direct {v0, v11, v10, v1, v12}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->j:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v11, 0x9

    const-string v12, "casual"

    invoke-direct {v0, v12, v11, v1, v12}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v12, "cursive"

    const/16 v13, 0xa

    const-string v14, "cursive"

    invoke-direct {v0, v12, v13, v1, v14}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->m:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v12, "smallCapitals"

    const/16 v13, 0xb

    const-string v14, "smallCapitals"

    invoke-direct {v0, v12, v13, v1, v14}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->o:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v12, "smallCapitalsApi"

    const/16 v13, 0xc

    const-string v14, "small_capitals"

    invoke-direct {v0, v12, v13, v1, v14}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->k:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string v12, "monospace"

    const/16 v13, 0xd

    const-string v14, "monospace"

    invoke-direct {v0, v12, v13, v1, v14}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->l:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v12, "sansSerif"

    const/16 v13, 0xe

    const-string v14, "sansSerif"

    invoke-direct {v0, v12, v13, v1, v14}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->n:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string v12, "serif"

    const/16 v13, 0xf

    const-string v14, "serif"

    invoke-direct {v0, v12, v13, v1, v14}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->q:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 19
    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->d:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->b:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->a:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->c:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->e:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->h:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->g:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->f:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->j:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->m:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->o:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->k:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->l:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->n:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->q:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->r:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->t:Landroid/graphics/Typeface;

    .line 42
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->s:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 6

    .line 71
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 76
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    .line 19
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->r:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->s:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/Typeface;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->t:Landroid/graphics/Typeface;

    return-object v0
.end method

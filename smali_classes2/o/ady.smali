.class public final Lo/ady;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/ady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/ady;

    invoke-direct {v0}, Lo/ady;-><init>()V

    sput-object v0, Lo/ady;->b:Lo/ady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 47
    sget-object v0, Lo/gb;->e:Lo/gb$TaskDescription;

    invoke-virtual {v0}, Lo/gb$TaskDescription;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/ady;->b:Lo/ady;

    .line 51
    invoke-direct {v0}, Lo/ady;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    const/4 v0, 0x0

    return v0
.end method

.method public static final b()Z
    .locals 1

    .line 34
    sget-object v0, Lo/ady;->b:Lo/ady;

    invoke-direct {v0}, Lo/ady;->n()Z

    move-result v0

    return v0
.end method

.method public static final b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z
    .locals 3

    const-string v0, "lomoType"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lo/adv;->b:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final c()Z
    .locals 1

    .line 30
    sget-object v0, Lo/gg;->d:Lo/gg$Activity;

    invoke-virtual {v0}, Lo/gg$Activity;->c()Z

    move-result v0

    return v0
.end method

.method public static final d()Z
    .locals 1

    .line 63
    sget-object v0, Lo/dP;->e:Lo/dP$StateListAnimator;

    invoke-virtual {v0}, Lo/dP$StateListAnimator;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/ady;->b:Lo/ady;

    .line 67
    invoke-direct {v0}, Lo/ady;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    const/4 v0, 0x0

    return v0
.end method

.method public static final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final f()Z
    .locals 1

    .line 79
    sget-object v0, Lo/gt;->b:Lo/gt$Application;

    invoke-virtual {v0}, Lo/gt$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/ady;->b:Lo/ady;

    .line 83
    invoke-direct {v0}, Lo/ady;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    const/4 v0, 0x0

    return v0
.end method

.method public static final g()I
    .locals 1

    .line 110
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    return v0
.end method

.method public static final h()Z
    .locals 1

    .line 119
    sget-object v0, Lo/gh;->b:Lo/gh$StateListAnimator;

    invoke-virtual {v0}, Lo/gh$StateListAnimator;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final i()Z
    .locals 1

    .line 114
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/ady;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final j()Z
    .locals 1

    .line 124
    sget-object v0, Lo/ady;->b:Lo/ady;

    invoke-direct {v0}, Lo/ady;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/fZ;->c:Lo/fZ$TaskDescription;

    invoke-virtual {v0}, Lo/fZ$TaskDescription;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final k()Z
    .locals 1

    .line 136
    sget-object v0, Lo/ft;->d:Lo/ft$StateListAnimator;

    invoke-virtual {v0}, Lo/ft$StateListAnimator;->a()Z

    move-result v0

    return v0
.end method

.method public static final l()Z
    .locals 1

    .line 133
    sget-object v0, Lo/gJ;->d:Lo/gJ$ActionBar;

    invoke-virtual {v0}, Lo/gJ$ActionBar;->d()Z

    move-result v0

    return v0
.end method

.method private final m()Z
    .locals 1

    .line 42
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final n()Z
    .locals 1

    .line 38
    invoke-direct {p0}, Lo/ady;->m()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final o()Z
    .locals 1

    .line 129
    sget-object v0, Lo/hi;->c:Lo/hi$ActionBar;

    invoke-virtual {v0}, Lo/hi$ActionBar;->a()Z

    move-result v0

    return v0
.end method

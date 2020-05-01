.class Lo/Lq$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/Lq$ActionBar;->b:Ljava/util/Map;

    .line 44
    invoke-static {}, Lo/Lq$ActionBar;->c()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)I
    .locals 0

    .line 35
    invoke-static {p0}, Lo/Lq$ActionBar;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lo/Lq$ActionBar;->d(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p0

    return p0
.end method

.method static synthetic c(II)I
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lo/Lq$ActionBar;->d(II)I

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 1

    .line 98
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    .line 99
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    .line 101
    invoke-static {v0, p0}, Lo/Lq$ActionBar;->d(II)I

    move-result p0

    return p0
.end method

.method private static c()V
    .locals 6

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 49
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x3

    .line 52
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x4

    .line 53
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    invoke-virtual {v2, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 58
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x5

    .line 60
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x6

    .line 61
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v1, Lo/Lq$ActionBar;->b:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d(II)I
    .locals 2

    .line 89
    sget-object v0, Lo/Lq$ActionBar;->b:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 90
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 91
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 1

    .line 72
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 76
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_1

    const/16 p0, 0x28

    return p0

    .line 80
    :cond_1
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    .line 82
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lo/ep;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 84
    invoke-static {p1, p0}, Lo/Lq;->a(II)I

    move-result p1

    const/4 v0, 0x1

    .line 85
    invoke-static {v0, p0}, Lo/Lq;->a(II)I

    move-result p0

    mul-int p1, p1, p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x5

    :goto_1
    return p1
.end method

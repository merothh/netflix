.class public Lo/kc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lo/sx;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lo/kc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/kc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/sE;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/kc;->d:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/kc;->e:Ljava/util/HashSet;

    .line 47
    invoke-direct {p0, p1}, Lo/kc;->d(Lo/sE;)V

    .line 48
    invoke-direct {p0, p1}, Lo/kc;->b(Lo/sE;)V

    .line 49
    invoke-direct {p0, p1}, Lo/kc;->c(Lo/sE;)V

    .line 50
    invoke-direct {p0, p1}, Lo/kc;->a(Lo/sE;)Lo/sx;

    move-result-object v0

    iput-object v0, p0, Lo/kc;->c:Lo/sx;

    .line 51
    invoke-interface {p1}, Lo/sE;->ah()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/kc;->g:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lo/sE;->ag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/kc;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Lo/sE;)Lo/sx;
    .locals 3

    .line 169
    invoke-interface {p1}, Lo/sE;->U()Lo/sA;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Lo/sA;->a()Lo/sx;

    move-result-object p1

    .line 177
    sget-object v0, Lo/kc;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventsLink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 159
    iget-object v1, p0, Lo/kc;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sb;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sb;

    .line 136
    invoke-virtual {v0}, Lo/sb;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo/sb;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lo/kc;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lo/sE;)V
    .locals 4

    .line 57
    invoke-interface {p1}, Lo/sE;->I()Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sv;

    .line 60
    invoke-virtual {v2}, Lo/sv;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v2}, Lo/sv;->c()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 63
    invoke-virtual {v2}, Lo/sv;->d()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v2}, Lo/sv;->c()I

    move-result v1

    goto :goto_0

    .line 68
    :cond_1
    iput-object v0, p0, Lo/kc;->b:Ljava/lang/String;

    return-void
.end method

.method private c(Lo/sE;)V
    .locals 2

    .line 108
    invoke-interface {p1}, Lo/sE;->L()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sC;

    .line 109
    invoke-virtual {v0}, Lo/sC;->c()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lo/kc;->e:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sQ;

    .line 142
    invoke-virtual {v0}, Lo/sQ;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v1, p0, Lo/kc;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lo/sQ;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lo/kc;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lo/sQ;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private d(Lo/sE;)V
    .locals 2

    .line 120
    invoke-interface {p1}, Lo/sE;->C()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {p1}, Lo/sE;->E()Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-interface {p1}, Lo/sE;->F()Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-direct {p0, v0}, Lo/kc;->e(Ljava/util/List;)V

    .line 124
    invoke-direct {p0, v1}, Lo/kc;->b(Ljava/util/List;)V

    .line 125
    invoke-direct {p0, p1}, Lo/kc;->d(Ljava/util/List;)V

    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 130
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->newTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lo/kc;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lo/kc;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/kc;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/kc;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/kc;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lo/kc;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public d()Lo/sx;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/kc;->c:Lo/sx;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lo/kc;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/kc;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/kc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    .line 188
    invoke-virtual {p0, v0}, Lo/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    .line 95
    iget-object v0, p0, Lo/kc;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "\\|"

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const-string v5, "T:"

    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

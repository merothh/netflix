.class Lo/EventList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EventList$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lo/ExternalStorageStats;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lo/EventList$ActionBar<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final e:Lo/EventList$ActionBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EventList$ActionBar<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lo/EventList$ActionBar;

    invoke-direct {v0}, Lo/EventList$ActionBar;-><init>()V

    iput-object v0, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/EventList;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Lo/EventList$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EventList$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lo/EventList;->e(Lo/EventList$ActionBar;)V

    .line 99
    iget-object v0, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    iput-object v0, p1, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    .line 100
    iget-object v0, v0, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    iput-object v0, p1, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    .line 101
    invoke-static {p1}, Lo/EventList;->c(Lo/EventList$ActionBar;)V

    return-void
.end method

.method private static c(Lo/EventList$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/EventList$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    iput-object p0, v0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    .line 114
    iget-object v0, p0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    iput-object p0, v0, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    return-void
.end method

.method private d(Lo/EventList$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EventList$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lo/EventList;->e(Lo/EventList$ActionBar;)V

    .line 107
    iget-object v0, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    iget-object v0, v0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    iput-object v0, p1, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    .line 108
    iget-object v0, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    iput-object v0, p1, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    .line 109
    invoke-static {p1}, Lo/EventList;->c(Lo/EventList$ActionBar;)V

    return-void
.end method

.method private static e(Lo/EventList$ActionBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/EventList$ActionBar<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    iget-object v1, p0, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    iput-object v1, v0, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    .line 119
    iget-object v0, p0, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    iget-object p0, p0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    iput-object p0, v0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    iget-object v0, v0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    .line 57
    :goto_0
    iget-object v1, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lo/EventList$ActionBar;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 69
    :cond_0
    invoke-static {v0}, Lo/EventList;->e(Lo/EventList$ActionBar;)V

    .line 70
    iget-object v1, p0, Lo/EventList;->b:Ljava/util/Map;

    iget-object v2, v0, Lo/EventList$ActionBar;->c:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, v0, Lo/EventList$ActionBar;->c:Ljava/lang/Object;

    check-cast v1, Lo/ExternalStorageStats;

    invoke-interface {v1}, Lo/ExternalStorageStats;->e()V

    .line 74
    iget-object v0, v0, Lo/EventList$ActionBar;->b:Lo/EventList$ActionBar;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lo/ExternalStorageStats;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lo/EventList;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/EventList$ActionBar;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lo/EventList$ActionBar;

    invoke-direct {v0, p1}, Lo/EventList$ActionBar;-><init>(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lo/EventList;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p1}, Lo/ExternalStorageStats;->e()V

    .line 48
    :goto_0
    invoke-direct {p0, v0}, Lo/EventList;->b(Lo/EventList$ActionBar;)V

    .line 50
    invoke-virtual {v0}, Lo/EventList$ActionBar;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/ExternalStorageStats;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/EventList;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/EventList$ActionBar;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lo/EventList$ActionBar;

    invoke-direct {v0, p1}, Lo/EventList$ActionBar;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, v0}, Lo/EventList;->d(Lo/EventList$ActionBar;)V

    .line 30
    iget-object v1, p0, Lo/EventList;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1}, Lo/ExternalStorageStats;->e()V

    .line 35
    :goto_0
    invoke-virtual {v0, p2}, Lo/EventList$ActionBar;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    iget-object v1, v1, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    const/4 v2, 0x0

    .line 85
    :goto_0
    iget-object v3, p0, Lo/EventList;->e:Lo/EventList$ActionBar;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0x7b

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lo/EventList$ActionBar;->c:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/EventList$ActionBar;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, v1, Lo/EventList$ActionBar;->a:Lo/EventList$ActionBar;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " )"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

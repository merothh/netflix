.class abstract Lo/Theme;
.super Lo/TypedArray;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/TypedArray<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/TextClassifier;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InputConnection;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p2}, Lo/TypedArray;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lo/Theme;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lo/Theme;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 121
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method final b(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 66
    instance-of v0, p1, Lo/TextClassifier;

    if-eqz v0, :cond_2

    .line 67
    check-cast p1, Lo/TextClassifier;

    .line 70
    iget-object v0, p0, Lo/Theme;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    iput-object v0, p0, Lo/Theme;->c:Ljava/util/Map;

    .line 74
    :cond_0
    iget-object v0, p0, Lo/Theme;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lo/Theme;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/Uri;->b(Landroid/content/Context;Lo/TextClassifier;)Landroid/view/SubMenu;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lo/Theme;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 43
    instance-of v0, p1, Lo/InputConnection;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p1

    check-cast v0, Lo/InputConnection;

    .line 47
    iget-object v1, p0, Lo/Theme;->e:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lo/Spanned;

    invoke-direct {v1}, Lo/Spanned;-><init>()V

    iput-object v1, p0, Lo/Theme;->e:Ljava/util/Map;

    .line 52
    :cond_0
    iget-object v1, p0, Lo/Theme;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lo/Theme;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lo/Uri;->d(Landroid/content/Context;Lo/InputConnection;)Landroid/view/MenuItem;

    move-result-object p1

    .line 57
    iget-object v1, p0, Lo/Theme;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method final c()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/Theme;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    :cond_0
    iget-object v0, p0, Lo/Theme;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method final d(I)V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/Theme;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 105
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.class Lo/SecurityManager$3;
.super Lo/State$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SecurityManager;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/SecurityManager;

.field final synthetic b:Ljava/util/List;

.field final synthetic d:Lo/StackOverflowError$ActionBar;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/SecurityManager;Ljava/util/List;Ljava/util/List;Lo/StackOverflowError$ActionBar;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lo/SecurityManager$3;->a:Lo/SecurityManager;

    iput-object p2, p0, Lo/SecurityManager$3;->e:Ljava/util/List;

    iput-object p3, p0, Lo/SecurityManager$3;->b:Ljava/util/List;

    iput-object p4, p0, Lo/SecurityManager$3;->d:Lo/StackOverflowError$ActionBar;

    invoke-direct {p0}, Lo/State$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 182
    iget-object v0, p0, Lo/SecurityManager$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 2

    .line 194
    iget-object v0, p0, Lo/SecurityManager$3;->d:Lo/StackOverflowError$ActionBar;

    iget-object v1, p0, Lo/SecurityManager$3;->e:Ljava/util/List;

    .line 195
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lo/SecurityManager$3;->b:Ljava/util/List;

    .line 196
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 194
    invoke-virtual {v0, p1, p2}, Lo/StackOverflowError$ActionBar;->d(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 177
    iget-object v0, p0, Lo/SecurityManager$3;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(II)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lo/SecurityManager$3;->d:Lo/StackOverflowError$ActionBar;

    iget-object v1, p0, Lo/SecurityManager$3;->e:Ljava/util/List;

    .line 188
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lo/SecurityManager$3;->b:Ljava/util/List;

    .line 189
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 187
    invoke-virtual {v0, p1, p2}, Lo/StackOverflowError$ActionBar;->b(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

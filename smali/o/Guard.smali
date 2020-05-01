.class Lo/Guard;
.super Lo/Provider;
.source ""

# interfaces
.implements Lo/Key;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lo/Provider;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static e(Landroid/view/ViewGroup;)Lo/Guard;
    .locals 0

    .line 32
    invoke-static {p0}, Lo/Provider;->e(Landroid/view/View;)Lo/Provider;

    move-result-object p0

    check-cast p0, Lo/Guard;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/Guard;->c:Lo/Provider$ActionBar;

    invoke-virtual {v0, p1}, Lo/Provider$ActionBar;->c(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/Guard;->c:Lo/Provider$ActionBar;

    invoke-virtual {v0, p1}, Lo/Provider$ActionBar;->e(Landroid/view/View;)V

    return-void
.end method

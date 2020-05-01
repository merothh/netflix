.class Lo/XR;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final a:Landroid/app/AlertDialog$Builder;

.field private final e:Lo/XN;


# direct methods
.method public constructor <init>(Lo/XN;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/XR;->e:Lo/XN;

    iput-object p2, p0, Lo/XR;->a:Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lo/XR;->e:Lo/XN;

    iget-object v1, p0, Lo/XR;->a:Landroid/app/AlertDialog$Builder;

    invoke-static {v0, v1, p1}, Lo/XN;->a(Lo/XN;Landroid/app/AlertDialog$Builder;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

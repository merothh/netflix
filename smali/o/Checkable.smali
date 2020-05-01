.class Lo/Checkable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Checkable;->e:Landroid/os/Handler;

    iput-object p2, p0, Lo/Checkable;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lo/Checkable;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lo/Checkable;->e:Landroid/os/Handler;

    iget-object v1, p0, Lo/Checkable;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lo/Checkable;->d:Ljava/lang/Runnable;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lo/CalendarViewLegacyDelegate;->d(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

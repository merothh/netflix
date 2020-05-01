.class Lo/RemoteCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Landroid/view/View;

.field private final d:I

.field private final e:F


# direct methods
.method public constructor <init>(Landroid/view/View;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RemoteCallback;->b:Landroid/view/View;

    iput p2, p0, Lo/RemoteCallback;->d:I

    iput p3, p0, Lo/RemoteCallback;->e:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/RemoteCallback;->b:Landroid/view/View;

    iget v1, p0, Lo/RemoteCallback;->d:I

    iget v2, p0, Lo/RemoteCallback;->e:F

    invoke-static {v0, v1, v2}, Lo/RemoteException;->b(Landroid/view/View;IF)V

    return-void
.end method

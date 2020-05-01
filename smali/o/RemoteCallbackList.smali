.class Lo/RemoteCallbackList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RemoteCallbackList;->a:Landroid/view/View;

    iput p2, p0, Lo/RemoteCallbackList;->b:I

    iput p3, p0, Lo/RemoteCallbackList;->d:I

    iput p4, p0, Lo/RemoteCallbackList;->e:I

    iput p5, p0, Lo/RemoteCallbackList;->c:I

    iput-object p6, p0, Lo/RemoteCallbackList;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lo/RemoteCallbackList;->a:Landroid/view/View;

    iget v1, p0, Lo/RemoteCallbackList;->b:I

    iget v2, p0, Lo/RemoteCallbackList;->d:I

    iget v3, p0, Lo/RemoteCallbackList;->e:I

    iget v4, p0, Lo/RemoteCallbackList;->c:I

    iget-object v5, p0, Lo/RemoteCallbackList;->i:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lo/RemoteException;->c(Landroid/view/View;IIIILandroid/view/View;)V

    return-void
.end method

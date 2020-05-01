.class Lo/Ms$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ms;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lo/Ms;


# direct methods
.method constructor <init>(Lo/Ms;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/Ms$3;->d:Lo/Ms;

    iput-object p2, p0, Lo/Ms$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/Ms$3;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 127
    iget-object p1, p0, Lo/Ms$3;->d:Lo/Ms;

    iget-object p1, p1, Lo/Ms;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    .line 128
    :try_start_0
    iget-object p2, p0, Lo/Ms$3;->d:Lo/Ms;

    iget-object p2, p2, Lo/Ms;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "mdxui"

    const-string v0, "Already clicked!"

    .line 129
    invoke-static {p2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit p1

    return-void

    .line 132
    :cond_0
    iget-object p2, p0, Lo/Ms$3;->d:Lo/Ms;

    iget-object p2, p2, Lo/Ms;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p1, p0, Lo/Ms$3;->d:Lo/Ms;

    invoke-virtual {p1}, Lo/Ms;->dismissAllowingStateLoss()V

    .line 137
    iget-object p1, p0, Lo/Ms$3;->d:Lo/Ms;

    invoke-virtual {p1}, Lo/Ms;->getFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    iget-object p2, p0, Lo/Ms$3;->d:Lo/Ms;

    invoke-virtual {p1, p2}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object p1

    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->b()I

    .line 138
    iget-object p1, p0, Lo/Ms$3;->d:Lo/Ms;

    invoke-virtual {p1}, Lo/Ms;->getActivity()Lo/Serializable;

    move-result-object p1

    .line 139
    instance-of p2, p1, Lo/Ms$ActionBar;

    if-eqz p2, :cond_1

    .line 140
    check-cast p1, Lo/Ms$ActionBar;

    iget-object p2, p0, Lo/Ms$3;->b:Ljava/lang/String;

    iget-object v1, p0, Lo/Ms$3;->c:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-interface {p1, p2, v0}, Lo/Ms$ActionBar;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 134
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.class Lo/BluetoothGatt$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreSession;
.implements Lo/RestoreSession$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RestoreSession<",
        "TData;>;",
        "Lo/RestoreSession$Application<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lo/RestoreSession$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreSession$Application<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private final c:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/Priority;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RestoreSession<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lo/CharArrayReader$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/RestoreSession<",
            "TData;>;>;",
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lo/BluetoothGatt$TaskDescription;->c:Lo/CharArrayReader$Activity;

    .line 89
    invoke-static {p1}, Lo/FeatureInfo;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 90
    iput-object p1, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lo/BluetoothGatt$TaskDescription;->a:I

    return-void
.end method

.method private d()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lo/BluetoothGatt$TaskDescription;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget v0, p0, Lo/BluetoothGatt$TaskDescription;->a:I

    iget-object v1, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 163
    iget v0, p0, Lo/BluetoothGatt$TaskDescription;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/BluetoothGatt$TaskDescription;->a:I

    .line 164
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->d:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lo/BluetoothGatt$TaskDescription;->b:Lo/RestoreSession$Application;

    invoke-virtual {p0, v0, v1}, Lo/BluetoothGatt$TaskDescription;->a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->j:Ljava/util/List;

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->b:Lo/RestoreSession$Application;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lo/BluetoothGatt$TaskDescription;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lo/RestoreSession$Application;->d(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lo/RestoreSession$Application<",
            "-TData;>;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lo/BluetoothGatt$TaskDescription;->d:Lcom/bumptech/glide/Priority;

    .line 98
    iput-object p2, p0, Lo/BluetoothGatt$TaskDescription;->b:Lo/RestoreSession$Application;

    .line 99
    iget-object p2, p0, Lo/BluetoothGatt$TaskDescription;->c:Lo/CharArrayReader$Activity;

    invoke-interface {p2}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/BluetoothGatt$TaskDescription;->j:Ljava/util/List;

    .line 100
    iget-object p2, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    iget v0, p0, Lo/BluetoothGatt$TaskDescription;->a:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RestoreSession;

    invoke-interface {p2, p1, p0}, Lo/RestoreSession;->a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V

    .line 106
    iget-boolean p1, p0, Lo/BluetoothGatt$TaskDescription;->g:Z

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lo/BluetoothGatt$TaskDescription;->e()V

    :cond_0
    return-void
.end method

.method public b()Lcom/bumptech/glide/load/DataSource;
    .locals 2

    .line 139
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RestoreSession;

    invoke-interface {v0}, Lo/RestoreSession;->b()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->b:Lo/RestoreSession$Application;

    invoke-interface {v0, p1}, Lo/RestoreSession$Application;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lo/BluetoothGatt$TaskDescription;->d()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 113
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lo/BluetoothGatt$TaskDescription;->c:Lo/CharArrayReader$Activity;

    invoke-interface {v1, v0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lo/BluetoothGatt$TaskDescription;->j:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RestoreSession;

    .line 118
    invoke-interface {v1}, Lo/RestoreSession;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->j:Ljava/util/List;

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lo/BluetoothGatt$TaskDescription;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/BluetoothGatt$TaskDescription;->g:Z

    .line 125
    iget-object v0, p0, Lo/BluetoothGatt$TaskDescription;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RestoreSession;

    .line 126
    invoke-interface {v1}, Lo/RestoreSession;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

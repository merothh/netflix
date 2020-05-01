.class Lo/Iterator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Iterator;->e(ILjava/util/List;Lo/Spliterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Iterator;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lo/Spliterator;


# direct methods
.method constructor <init>(Lo/Iterator;Ljava/util/List;ILo/Spliterator;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/Iterator$2;->a:Lo/Iterator;

    iput-object p2, p0, Lo/Iterator$2;->d:Ljava/util/List;

    iput p3, p0, Lo/Iterator$2;->c:I

    iput-object p4, p0, Lo/Iterator$2;->e:Lo/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 171
    iget-object v0, p0, Lo/Iterator$2;->a:Lo/Iterator;

    iget-object v1, p0, Lo/Iterator$2;->d:Ljava/util/List;

    iget v2, p0, Lo/Iterator$2;->c:I

    invoke-static {v0, v1, v2}, Lo/Iterator;->c(Lo/Iterator;Ljava/util/List;I)Z

    move-result v0

    .line 172
    iget-object v1, p0, Lo/Iterator$2;->e:Lo/Spliterator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lo/Iterator$2;->a:Lo/Iterator;

    invoke-static {v0}, Lo/Iterator;->d(Lo/Iterator;)Lo/Iterator$TaskDescription;

    move-result-object v0

    iget-object v1, p0, Lo/Iterator$2;->e:Lo/Spliterator;

    invoke-interface {v0, v1}, Lo/Iterator$TaskDescription;->d(Lo/Spliterator;)V

    :cond_0
    return-void
.end method

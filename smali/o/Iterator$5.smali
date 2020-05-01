.class Lo/Iterator$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Iterator;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lo/Iterator;

.field final synthetic c:I

.field final synthetic d:Lo/Iterator$Application;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/Iterator;Lo/Iterator$Application;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/Iterator$5;->b:Lo/Iterator;

    iput-object p2, p0, Lo/Iterator$5;->d:Lo/Iterator$Application;

    iput p3, p0, Lo/Iterator$5;->c:I

    iput-object p4, p0, Lo/Iterator$5;->e:Ljava/util/List;

    iput-object p5, p0, Lo/Iterator$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 154
    iget-object v0, p0, Lo/Iterator$5;->d:Lo/Iterator$Application;

    invoke-static {v0}, Lo/State;->b(Lo/State$ActionBar;)Lo/State$Application;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lo/Iterator$5;->b:Lo/Iterator;

    iget v2, p0, Lo/Iterator$5;->c:I

    iget-object v3, p0, Lo/Iterator$5;->e:Ljava/util/List;

    iget-object v4, p0, Lo/Iterator$5;->a:Ljava/util/List;

    invoke-static {v4, v3, v0}, Lo/Spliterator;->c(Ljava/util/List;Ljava/util/List;Lo/State$Application;)Lo/Spliterator;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lo/Iterator;->b(Lo/Iterator;ILjava/util/List;Lo/Spliterator;)V

    return-void
.end method

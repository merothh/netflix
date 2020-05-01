.class Lo/TabActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TabActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/TabActivity;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/TabActivity;Ljava/util/List;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/TabActivity$5;->b:Lo/TabActivity;

    iput-object p2, p0, Lo/TabActivity$5;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lo/TabActivity$5;->b:Lo/TabActivity;

    iget-object v1, p0, Lo/TabActivity$5;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lo/TabActivity;->b(Ljava/util/Collection;)V

    .line 76
    iget-object v0, p0, Lo/TabActivity$5;->b:Lo/TabActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/TabActivity;->d:Z

    return-void
.end method

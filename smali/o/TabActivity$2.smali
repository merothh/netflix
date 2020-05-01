.class Lo/TabActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TabActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/TabActivity;


# direct methods
.method constructor <init>(Lo/TabActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/TabActivity$2;->d:Lo/TabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lo/TabActivity$2;->d:Lo/TabActivity;

    invoke-virtual {v0}, Lo/TabActivity;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TabActivity;->b(Ljava/util/Collection;)V

    return-void
.end method

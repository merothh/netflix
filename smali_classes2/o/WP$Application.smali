.class final Lo/WP$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WP;->b(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/WP;


# direct methods
.method constructor <init>(Lo/WP;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WP$Application;->e:Lo/WP;

    iput-boolean p2, p0, Lo/WP$Application;->c:Z

    iput-object p3, p0, Lo/WP$Application;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 79
    iget-boolean v0, p0, Lo/WP$Application;->c:Z

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lo/WP;->e:Lo/WP$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 81
    iget-object v0, p0, Lo/WP$Application;->e:Lo/WP;

    .line 82
    new-instance v1, Lo/UW$Activity;

    .line 83
    iget-object v2, p0, Lo/WP$Application;->d:Ljava/lang/String;

    const/4 v3, 0x0

    .line 82
    invoke-direct {v1, v2, v3}, Lo/UW$Activity;-><init>(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v0, v1}, Lo/WP;->e(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lo/WP$Application;->e:Lo/WP;

    iget-object v1, p0, Lo/WP$Application;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/WP;->d(Lo/WP;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

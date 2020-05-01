.class Lo/acS$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acS;->c(Lo/Ac;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Ac;

.field final synthetic e:Lo/acS;


# direct methods
.method constructor <init>(Lo/acS;Lo/Ac;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/acS$2;->e:Lo/acS;

    iput-object p2, p0, Lo/acS$2;->b:Lo/Ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lo/acS$2;->b:Lo/Ac;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/Ac;->c(IZ)V

    return-void
.end method

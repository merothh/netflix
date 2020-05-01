.class Lo/Gy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Gy;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Gy;


# direct methods
.method constructor <init>(Lo/Gy;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/Gy$2;->e:Lo/Gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/Gy$2;->e:Lo/Gy;

    invoke-static {v0}, Lo/Gy;->e(Lo/Gy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->h(Landroid/content/Context;)V

    return-void
.end method

.class Lo/Ue$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Ue;


# direct methods
.method constructor <init>(Lo/Ue;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/Ue$4;->b:Lo/Ue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/Ue$4;->b:Lo/Ue;

    invoke-virtual {v0}, Lo/Ue;->a()V

    return-void
.end method

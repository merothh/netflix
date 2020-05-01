.class Lo/it$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/it;


# direct methods
.method constructor <init>(Lo/it;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/it$4;->b:Lo/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lo/it$4;->b:Lo/it;

    invoke-static {v0}, Lo/it;->b(Lo/it;)V

    return-void
.end method

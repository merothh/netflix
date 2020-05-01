.class final Lo/abJ$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abJ;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/abJ;


# direct methods
.method constructor <init>(Lo/abJ;)V
    .locals 0

    iput-object p1, p0, Lo/abJ$Activity;->d:Lo/abJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 146
    iget-object v0, p0, Lo/abJ$Activity;->d:Lo/abJ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/abJ;->a(Lo/abJ;IILjava/lang/Object;)V

    return-void
.end method

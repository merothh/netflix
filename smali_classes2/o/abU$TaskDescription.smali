.class final Lo/abU$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abU;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/abU;


# direct methods
.method constructor <init>(Lo/abU;)V
    .locals 0

    iput-object p1, p0, Lo/abU$TaskDescription;->c:Lo/abU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/abU$TaskDescription;->c:Lo/abU;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/abU;->c(Z)V

    return-void
.end method

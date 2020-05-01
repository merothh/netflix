.class final Lo/Rv$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rv;->e(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Rv;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Rv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/Rv$PendingIntent;->a:Lo/Rv;

    iput-object p2, p0, Lo/Rv$PendingIntent;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/Rv$PendingIntent;->a:Lo/Rv;

    invoke-static {v0}, Lo/Rv;->c(Lo/Rv;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lo/Rv$PendingIntent;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.class public final Lo/Ph$TaskDescription;
.super Lo/Ph;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lo/Ph;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Ph$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p2, p0, Lo/Ph$TaskDescription;->c:Ljava/lang/String;

    return-void
.end method

.class public final Lo/aaF$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aaF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:J

.field private final c:Lo/Bs;

.field private final d:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Bs;JZ)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aaF$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p2, p0, Lo/aaF$TaskDescription;->c:Lo/Bs;

    iput-wide p3, p0, Lo/aaF$TaskDescription;->a:J

    iput-boolean p5, p0, Lo/aaF$TaskDescription;->e:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lo/aaF$TaskDescription;->a:J

    return-wide v0
.end method

.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/aaF$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lo/aaF$TaskDescription;->e:Z

    return v0
.end method

.method public final e()Lo/Bs;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/aaF$TaskDescription;->c:Lo/Bs;

    return-object v0
.end method

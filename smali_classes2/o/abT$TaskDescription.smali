.class final Lo/abT$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abT;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Ik;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Ik;Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/abT$TaskDescription;->c:Lo/Ik;

    iput-object p2, p0, Lo/abT$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    iput-object p3, p0, Lo/abT$TaskDescription;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 134
    iget-object v0, p0, Lo/abT$TaskDescription;->c:Lo/Ik;

    iget-object v1, p0, Lo/abT$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    iget-object v2, p0, Lo/abT$TaskDescription;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lo/Ik;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.class public final Lo/JM$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private c:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

.field private d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JM$TaskDescription;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    iput-object p2, p0, Lo/JM$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/JM$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final e()Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/JM$TaskDescription;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    return-object v0
.end method

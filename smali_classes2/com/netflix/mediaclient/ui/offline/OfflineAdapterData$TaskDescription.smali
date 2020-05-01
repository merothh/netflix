.class public Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lo/Tf;

.field public final c:I

.field public final d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;Lo/Tf;ILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    .line 43
    iput p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->c:I

    .line 44
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    return-void
.end method

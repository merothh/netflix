.class public Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;
.super Ljava/lang/Object;
.source "ActivityPageOfflineAgentListener.java"


# instance fields
.field final errors:I

.field final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->text:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->errors:I

    .line 63
    return-void
.end method

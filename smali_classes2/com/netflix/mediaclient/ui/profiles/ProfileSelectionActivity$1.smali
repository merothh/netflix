.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;->b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 222
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;->b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/Am;)Lo/Am;

    .line 223
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;->b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;->b:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/Am;)Lo/Am;

    return-void
.end method

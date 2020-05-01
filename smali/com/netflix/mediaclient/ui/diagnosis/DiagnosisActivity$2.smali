.class Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "DiagnosisActivity"

    const-string/jumbo v1, "DiagnosisUpdated "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->mUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getResult()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->SUCCESS:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->updateInfoGroup(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$000(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->FAILED:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->updateInfoGroup(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

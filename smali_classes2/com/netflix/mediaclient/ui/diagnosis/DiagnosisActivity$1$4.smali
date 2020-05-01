.class Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1$4;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 273
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1$4;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    return-void
.end method

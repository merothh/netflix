.class final Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$Application;->b:Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$Application;->b:Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/TransitionListenerAdapter;->i()V

    return-void
.end method

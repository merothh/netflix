.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->addItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$ActionBar;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$ActionBar;->b:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Lo/EW$Application;->a:Lo/EW$Application;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

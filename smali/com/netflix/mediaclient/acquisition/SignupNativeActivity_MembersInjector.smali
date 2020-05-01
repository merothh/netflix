.class public final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final signupErrorReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/SystemTextClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final signupFragmentLifecycleLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/SelectionSessionLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final signupNetworkManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/TextClassifierImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lo/SelectionSessionLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/SystemTextClassifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/TextClassifierImpl;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->signupFragmentLifecycleLoggerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->signupErrorReporterProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->signupNetworkManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/ajW;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lo/SelectionSessionLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/SystemTextClassifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/TextClassifierImpl;",
            ">;)",
            "Lo/ajW<",
            "Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSignupErrorReporter(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/SystemTextClassifier;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupErrorReporter:Lo/SystemTextClassifier;

    return-void
.end method

.method public static injectSignupFragmentLifecycleLogger(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/SelectionSessionLogger;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupFragmentLifecycleLogger:Lo/SelectionSessionLogger;

    return-void
.end method

.method public static injectSignupNetworkManager(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/TextClassifierImpl;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->signupNetworkManager:Lo/TextClassifierImpl;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->signupFragmentLifecycleLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SelectionSessionLogger;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectSignupFragmentLifecycleLogger(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/SelectionSessionLogger;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->signupErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SystemTextClassifier;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectSignupErrorReporter(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/SystemTextClassifier;)V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->signupNetworkManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TextClassifierImpl;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectSignupNetworkManager(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Lo/TextClassifierImpl;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity_MembersInjector;->injectMembers(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    return-void
.end method

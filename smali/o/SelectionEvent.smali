.class public final Lo/SelectionEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;


# instance fields
.field private final d:Lo/TextClassificationManager;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SelectionEvent;->d:Lo/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public navigateToPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mode"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "targetNetflixClientPlatform"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lo/SelectionEvent$ActionBar;

    invoke-direct {p1, p2}, Lo/SelectionEvent$ActionBar;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    .line 19
    new-instance p2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object p3, Lcom/netflix/cl/model/AppView;->paymentOption:Lcom/netflix/cl/model/AppView;

    invoke-direct {p2, p3, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 20
    iget-object p1, p0, Lo/SelectionEvent;->d:Lo/TextClassificationManager;

    new-instance p3, Lcom/netflix/cl/model/event/session/command/ForwardCommand;

    invoke-direct {p3}, Lcom/netflix/cl/model/event/session/command/ForwardCommand;-><init>()V

    check-cast p3, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-virtual {p1, p2, p3}, Lo/TextClassificationManager;->a(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public onSkipAlternatePaymentMethod()V
    .locals 2

    .line 24
    iget-object v0, p0, Lo/SelectionEvent;->d:Lo/TextClassificationManager;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SkipCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SkipCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-virtual {v0, v1}, Lo/TextClassificationManager;->d(Lcom/netflix/cl/model/event/session/command/Command;)Z

    return-void
.end method

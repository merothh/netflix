.class public final Lo/PrecomputedText;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SpanSet;


# instance fields
.field private final d:Lo/TextClassificationManager;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PrecomputedText;->d:Lo/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_0
    new-instance v0, Lo/Selection;

    iget-object v1, p0, Lo/PrecomputedText;->d:Lo/TextClassificationManager;

    invoke-direct {v0, v1, p1, p2}, Lo/Selection;-><init>(Lo/TextClassificationManager;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;)V

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    return-object v0
.end method

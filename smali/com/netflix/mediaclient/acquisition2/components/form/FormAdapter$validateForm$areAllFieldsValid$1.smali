.class public final Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VrListenerService;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/SynthesisPlaybackQueueItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;->c:Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/SynthesisPlaybackQueueItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v0}, Lo/SynthesisPlaybackQueueItem;->setShowValidationState(Z)V

    .line 94
    invoke-virtual {p1}, Lo/SynthesisPlaybackQueueItem;->getAreAllFieldsValid()Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lo/SynthesisPlaybackQueueItem;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;->b(Lo/SynthesisPlaybackQueueItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

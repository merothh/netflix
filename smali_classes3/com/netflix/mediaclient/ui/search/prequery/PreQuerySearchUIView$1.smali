.class final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$1;->c:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$1;->c:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    sget-object v1, Lo/ZR$VoiceInteractor;->b:Lo/ZR$VoiceInteractor;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e(Ljava/lang/Object;)V

    return-void
.end method

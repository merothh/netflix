.class Lo/Ol;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:I

.field private final b:Lcom/netflix/mediaclient/service/pushnotification/Payload;

.field private final c:Landroid/content/Context;

.field private final e:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ol;->e:Landroid/app/Notification$Builder;

    iput-object p2, p0, Lo/Ol;->b:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p3, p0, Lo/Ol;->c:Landroid/content/Context;

    iput p4, p0, Lo/Ol;->a:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo/Ol;->e:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/Ol;->b:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, p0, Lo/Ol;->c:Landroid/content/Context;

    iget v3, p0, Lo/Ol;->a:I

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static {v0, v1, v2, v3, p1}, Lo/Om;->e(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;ILcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

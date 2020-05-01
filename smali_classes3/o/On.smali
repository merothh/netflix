.class Lo/On;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/pushnotification/Payload;

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:Lo/ErrorCodes;

.field private final e:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;ILo/ErrorCodes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/On;->e:Landroid/app/Notification$Builder;

    iput-object p2, p0, Lo/On;->c:Landroid/content/Context;

    iput-object p3, p0, Lo/On;->a:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput p4, p0, Lo/On;->b:I

    iput-object p5, p0, Lo/On;->d:Lo/ErrorCodes;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/On;->e:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/On;->c:Landroid/content/Context;

    iget-object v2, p0, Lo/On;->a:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget v3, p0, Lo/On;->b:I

    iget-object v4, p0, Lo/On;->d:Lo/ErrorCodes;

    move-object v5, p1

    check-cast v5, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-static/range {v0 .. v5}, Lo/Om;->b(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;ILo/ErrorCodes;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

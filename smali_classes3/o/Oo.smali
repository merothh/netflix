.class Lo/Oo;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Lcom/netflix/mediaclient/service/pushnotification/Payload;

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Lo/ErrorCodes;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;Landroid/app/Notification$Builder;ILo/ErrorCodes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Oo;->b:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p2, p0, Lo/Oo;->c:Landroid/content/Context;

    iput-object p3, p0, Lo/Oo;->a:Landroid/app/Notification$Builder;

    iput p4, p0, Lo/Oo;->d:I

    iput-object p5, p0, Lo/Oo;->e:Lo/ErrorCodes;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/Oo;->b:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v1, p0, Lo/Oo;->c:Landroid/content/Context;

    iget-object v2, p0, Lo/Oo;->a:Landroid/app/Notification$Builder;

    iget v3, p0, Lo/Oo;->d:I

    iget-object v4, p0, Lo/Oo;->e:Lo/ErrorCodes;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-static/range {v0 .. v5}, Lo/Om;->d(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Context;Landroid/app/Notification$Builder;ILo/ErrorCodes;Ljava/lang/Throwable;)V

    return-void
.end method

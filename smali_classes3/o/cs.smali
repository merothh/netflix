.class Lo/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

.field private final b:Lo/co;

.field private final e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lo/co;Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/cs;->b:Lo/co;

    iput-object p2, p0, Lo/cs;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    iput-object p3, p0, Lo/cs;->e:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/cs;->b:Lo/co;

    iget-object v1, p0, Lo/cs;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;

    iget-object v2, p0, Lo/cs;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lo/co;->a(Lo/co;Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

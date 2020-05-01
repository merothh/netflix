.class Lo/xC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/xy;

.field private final b:J

.field private final c:J

.field private final d:Lcom/netflix/mediaclient/media/PreferredLanguageData;

.field private final e:J


# direct methods
.method public constructor <init>(Lo/xy;JJJLcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xC;->a:Lo/xy;

    iput-wide p2, p0, Lo/xC;->c:J

    iput-wide p4, p0, Lo/xC;->b:J

    iput-wide p6, p0, Lo/xC;->e:J

    iput-object p8, p0, Lo/xC;->d:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lo/xC;->a:Lo/xy;

    iget-wide v1, p0, Lo/xC;->c:J

    iget-wide v3, p0, Lo/xC;->b:J

    iget-wide v5, p0, Lo/xC;->e:J

    iget-object v7, p0, Lo/xC;->d:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-static/range {v0 .. v7}, Lo/xy;->d(Lo/xy;JJJLcom/netflix/mediaclient/media/PreferredLanguageData;)V

    return-void
.end method

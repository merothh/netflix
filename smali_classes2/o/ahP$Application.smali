.class public Lo/ahP$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ahP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field public final a:Lo/ahS;

.field public final c:Lo/ahX;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ahS;Lo/ahX;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ahS;",
            "Lo/ahX;",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lo/ahP$Application;->a:Lo/ahS;

    .line 219
    iput-object p2, p0, Lo/ahP$Application;->c:Lo/ahX;

    .line 220
    iput-object p3, p0, Lo/ahP$Application;->e:Ljava/util/Set;

    return-void
.end method

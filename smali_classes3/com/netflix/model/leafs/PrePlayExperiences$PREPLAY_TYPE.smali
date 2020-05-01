.class public interface abstract annotation Lcom/netflix/model/leafs/PrePlayExperiences$PREPLAY_TYPE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/PrePlayExperiences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PREPLAY_TYPE"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final INTERACTIVE_TUTORIAL:Ljava/lang/String; = "tutorialPrePlay"

.field public static final RECAP:Ljava/lang/String; = "recapPrePlay"
